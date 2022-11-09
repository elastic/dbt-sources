
with source as (

    select * from {{ source('raw_salesforce', 'tspc_event_c_hd') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        parent_id,
        system_modstamp,
        tspc_actual_end_date_c_hpr,
        tspc_actual_end_date_c_hst,
        tspc_actual_start_date_c_hpr,
        tspc_actual_start_date_c_hst,
        tspc_deal_c_hpr,
        tspc_deal_c_hst,
        tspc_end_date_c_hpr,
        tspc_end_date_c_hst,
        tspc_start_date_c_hpr,
        tspc_start_date_c_hst,
        tspc_status_c_hpr,
        tspc_status_c_hst,
        valid_from_date,
        valid_to_date

    from source

)

select * from renamed
