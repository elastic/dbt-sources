
with source as (

    select * from {{ source('raw_netsuite_sa', 'customization_risk__requirement_map_history') }}

),

renamed as (

    select
        customization_id,
        process_issue_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed