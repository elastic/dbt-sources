
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_playbook_info_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_closed_date_c,
        jbcxm_cta_c,
        jbcxm_date_c,
        jbcxm_playbook_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
