export-env {
    $env.config = {
        table: {
            mode: with_love # Set the table mode to with_love
            show_empty: true # Enable showing 'empty list' and 'empty record' placeholders
        }
    }
}

export def inventory [] {
    try { open ../character/inventory.yaml } catch { {} }
}

export def grab [
    object: string
    thing: string
] {

    let contents = open $object

    if $thing not-in $contents {
        return $"Thre is no ($thing) in ($object)"
    }

    let item = $contents | get $thing


    inventory | upsert $thing $item | save -f ../character/inventory.yaml
    $contents | reject $thing | save -f $object

    $"You grabbed ($thing)!"
}
