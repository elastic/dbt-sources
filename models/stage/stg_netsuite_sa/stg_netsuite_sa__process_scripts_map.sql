
with source as (

    select * from {{ source('raw_netsuite_sa', 'process_scripts_map') }}

),

renamed as (

    select
        customization_id,
        process_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
