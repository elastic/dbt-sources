
with source as (

    select * from {{ source('raw_netsuite_sa', 'customization_sod_incidents_map') }}

),

renamed as (

    select
        change_log_id,
        customization_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
