
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_merge_group_member_c') }}

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
        lean_data_contact_c,
        lean_data_job_id_c,
        lean_data_lead_c,
        lean_data_marketing_lead_c,
        lean_data_merge_group_id_c,
        lean_data_merge_group_member_id_c,
        lean_data_status_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
