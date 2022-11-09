
with source as (

    select * from {{ source('raw_netsuite_sa', 'risk_country_status_history') }}

),

renamed as (

    select
        risk_country_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        risk_country_status_extid,
        risk_country_status_name,
        partition_date

    from source

)

select * from renamed
