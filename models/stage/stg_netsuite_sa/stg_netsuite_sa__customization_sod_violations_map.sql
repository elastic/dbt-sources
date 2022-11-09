
with source as (

    select * from {{ source('raw_netsuite_sa', 'customization_sod_violations_map') }}

),

renamed as (

    select
        customization_id,
        sod_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
