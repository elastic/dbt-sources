
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_interesting_moments_cache_c') }}

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
        mkto_si_account_link_c,
        mkto_si_account_link_name_c,
        mkto_si_activity_dt_c,
        mkto_si_campaign_c,
        mkto_si_contact_link_c,
        mkto_si_contact_link_name_c,
        mkto_si_id_c,
        mkto_si_moment_note_c,
        mkto_si_moment_type_c,
        mkto_si_row_num_c,
        mkto_si_total_count_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
