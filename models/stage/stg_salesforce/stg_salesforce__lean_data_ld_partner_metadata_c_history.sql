
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_ld_partner_metadata_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_key_c,
        lean_data_label_c,
        lean_data_ld_partner_c,
        lean_data_partner_name_c,
        lean_data_value_2_c,
        lean_data_value_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
