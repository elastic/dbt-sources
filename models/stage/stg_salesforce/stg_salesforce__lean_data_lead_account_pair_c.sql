
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_lead_account_pair_c') }}

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
        lean_data_account_c,
        lean_data_external_la_id_c,
        lean_data_la_id_c,
        lean_data_lead_c,
        lean_data_marketing_lead_c,
        lean_data_status_c,
        lean_data_type_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
