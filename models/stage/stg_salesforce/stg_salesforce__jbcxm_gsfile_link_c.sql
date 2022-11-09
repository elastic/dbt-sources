
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gsfile_link_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_account_c,
        jbcxm_cta_c,
        jbcxm_document_id_c,
        jbcxm_file_name_c,
        jbcxm_url_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
