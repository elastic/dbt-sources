
with source as (

    select * from {{ source('raw_salesforce', 'tspc_period_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        tspc_color_c,
        tspc_date_c,
        tspc_eid_c,
        tspc_is_active_c,
        tspc_month_day_c

    from source

)

select * from renamed
