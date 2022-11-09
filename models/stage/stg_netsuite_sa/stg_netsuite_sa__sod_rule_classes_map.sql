
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_rule_classes_map') }}

),

renamed as (

    select
        class_id,
        sod_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
