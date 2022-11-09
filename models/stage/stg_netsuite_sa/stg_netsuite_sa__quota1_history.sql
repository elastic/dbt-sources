
with source as (

    select * from {{ source('raw_netsuite_sa', 'quota1_history') }}

),

renamed as (

    select
        quota_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount,
        class_0,
        date_0,
        date_deleted,
        department,
        entity_id,
        is_alt_sales,
        item,
        location_0,
        period,
        quarterly_amount,
        subsidiary,
        team_quota,
        partition_date

    from source

)

select * from renamed
