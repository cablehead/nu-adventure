export-env {
    $env.config = {
        table: {
            mode: rounded
            show_empty: true
        }
    }

    $env.config.hooks.display_output = "table -e"
}

export def inventory [] {
    let contents = try { open ../character/inventory.yaml } catch { {} }
    $contents
}

export def grab [
    object: string
    thing: string
] {
    let contents = open $object

    if $thing not-in $contents {
        return $"There is no ($thing) in ($object)"
    }

    let item = $contents | get $thing

    inventory | upsert $thing $item | save -f ../character/inventory.yaml
    $contents | reject $thing | save -f $object

    $"You grabbed ($thing)!"
}
