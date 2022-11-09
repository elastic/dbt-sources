
with source as (

    select * from {{ source('raw_salesforce', 'tspc_deal_snapshot_c') }}

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
        tspc_data_c,
        tspc_data_opp_c,
        tspc_data_pb_c,
        tspc_data_rs_c,
        tspc_data_sc_c,
        tspc_deal_c,
        tspc_description_c,
        tspc_eid_c,
        tspc_template_c,
        tspc_template_name_c,
        tspc_template_version_c,
        tspc_template_version_name_c,
        tspc_timestamp_c

    from source

)

select * from renamed
