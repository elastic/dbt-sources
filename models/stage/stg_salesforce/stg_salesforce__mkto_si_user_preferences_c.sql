
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_user_preferences_c') }}

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
        mkto_si_best_bets_view_c,
        mkto_si_last_what_is_new_version_c,
        mkto_si_max_pages_awa_c,
        mkto_si_max_pages_c,
        mkto_si_max_pages_im_c,
        mkto_si_max_pages_mbb_c,
        mkto_si_max_pages_me_c,
        mkto_si_max_pages_mhbb_c,
        mkto_si_max_pages_mtbb_c,
        mkto_si_max_pages_mwl_c,
        mkto_si_max_pages_sc_c,
        mkto_si_max_pages_wa_c,
        mkto_si_show_what_is_new_c,
        mkto_si_time_frame_days_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
