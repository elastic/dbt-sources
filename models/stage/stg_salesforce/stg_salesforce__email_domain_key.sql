
with source as (

    select * from {{ source('raw_salesforce', 'email_domain_key') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        domain,
        domain_match,
        is_active,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        private_key,
        public_key,
        selector,
        system_modstamp,
        key_size,
        txt_records_publish_state,
        alternate_public_key,
        alternate_selector,
        alternate_txt_record_name,
        txt_record_name,
        _fivetran_deleted

    from source

)

select * from renamed
