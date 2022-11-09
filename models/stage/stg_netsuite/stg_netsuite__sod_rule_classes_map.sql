
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_classes_map') }}

),

renamed as (

    select
        class_id,
        sod_rule_id

    from source

)

select * from renamed
