
with source as (

    select * from {{ source('raw_salesforce', 'tspc_ap_ws_item_c') }}

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
        system_modstamp,
        tspc_account_map_c,
        tspc_ap_c,
        tspc_eid_c,
        tspc_opportunity_relation_count_c

    from source

)

select * from renamed
