
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_email_activity_cache_c_history') }}

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
        mkto_si_account_link_c,
        mkto_si_account_link_name_c,
        mkto_si_activity_dt_c,
        mkto_si_campaign_c,
        mkto_si_click_count_c,
        mkto_si_contact_link_c,
        mkto_si_contact_link_name_c,
        mkto_si_id_c,
        mkto_si_message_id_c,
        mkto_si_message_thread_index_c,
        mkto_si_message_type_c,
        mkto_si_open_count_c,
        mkto_si_row_num_c,
        mkto_si_status_c,
        mkto_si_subject_c,
        mkto_si_thread_number_c,
        mkto_si_thread_subject_c,
        mkto_si_total_count_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
