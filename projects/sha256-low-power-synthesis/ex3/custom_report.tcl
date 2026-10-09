proc custom_report {num_paths cell_full_name} {

    set cell_obj [get_cells -quiet $cell_full_name]
    if {[sizeof_collection $cell_obj] == 0} {
        echo "ERROR: cell $cell_full_name not found"
        return
    }

    set in_pins  [get_pins -quiet -of_objects $cell_obj -filter "direction == in"]
    set out_pins [get_pins -quiet -of_objects $cell_obj -filter "direction == out"]

    set fanin_cells {}
    if {[sizeof_collection $in_pins] > 0} {
        set fanin_cells [get_object_name [get_cells -quiet -of_objects [all_fanin -to $in_pins] -filter "is_sequential == false && is_hierarchical == false"]]
    }
    set fanout_cells {}
    if {[sizeof_collection $out_pins] > 0} {
        set fanout_cells [get_object_name [get_cells -quiet -of_objects [all_fanout -from $out_pins] -filter "is_sequential == false && is_hierarchical == false"]]
    }

    set paths [get_timing_paths -through $cell_obj -max_paths $num_paths -nworst $num_paths -delay_type max -slack_lesser_than 999]
    if {[sizeof_collection $paths] == 0} {
        echo "No timing paths found traversing cell $cell_full_name"
        return
    }

    set rows {}
    foreach_in_collection p $paths {
        set sp [get_object_name [get_attribute $p startpoint]]
        set ep [get_object_name [get_attribute $p endpoint]]
        set sl [get_attribute $p slack]

        set path_pins [get_attribute [get_attribute $p points] object]
        set path_cells [get_object_name [get_cells -quiet -of_objects $path_pins -filter "is_sequential == false && is_hierarchical == false"]]

        set nin 0
        foreach c $path_cells {
            if {[lsearch -exact $fanin_cells $c] >= 0 && $c ne $cell_full_name} { incr nin }
        }
        set nout 0
        foreach c $path_cells {
            if {[lsearch -exact $fanout_cells $c] >= 0 && $c ne $cell_full_name} { incr nout }
        }

        lappend rows [list $sl $sp $ep $nin $nout]
    }

    set rows [lsort -real -index 0 $rows]

    echo [format "%-40s %-40s %-12s %-12s %-12s" "STARTPOINT" "ENDPOINT" "SLACK" "FANIN_CELLS" "FANOUT_CELLS"]
    foreach r $rows {
        echo [format "%-40s %-40s %-12.4f %-12d %-12d" [lindex $r 1] [lindex $r 2] [lindex $r 0] [lindex $r 3] [lindex $r 4]]
    }
}
