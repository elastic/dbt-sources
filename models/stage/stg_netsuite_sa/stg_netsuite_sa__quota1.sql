
with source as (

    select * from {{ source('raw_netsuite_sa', 'quota1') }}

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
        team_quota

    from source

)

select * from renamed
