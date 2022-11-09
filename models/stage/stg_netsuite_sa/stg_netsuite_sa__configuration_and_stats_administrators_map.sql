
with source as (

    select * from {{ source('raw_netsuite_sa', 'configuration_and_stats_administrators_map') }}

),

renamed as (

    select
        configuration_and_stats_id,
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
