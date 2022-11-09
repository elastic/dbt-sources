
with source as (

    select * from {{ source('raw_salesforce', 'language_io_linguist_now_thread_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        language_io_case_id_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        language_io_case_c,
        language_io_retranslation_requested_c,
        language_io_parent_id_c,
        language_io_is_second_translation_c,
        language_io_case_icase_id_extd_ext_c,
        language_io_rn_response_project_id_c,
        language_io_word_count_c,
        language_io_status_message_c,
        language_io_is_machine_c,
        language_io_is_first_translation_c

    from source

)

select * from renamed
