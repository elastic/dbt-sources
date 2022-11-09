
with source as (

    select * from {{ source('raw_salesforce', 'tspc_account_map_c') }}

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
        tspc_account_c,
        tspc_eid_c,
        tspc_is_deployed_c,
        tspc_is_primary_c,
        tspc_last_activity_c,
        tspc_node_count_c,
        tspc_node_last_modified_date_c

    from source

)

select * from renamed
