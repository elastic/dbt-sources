
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_best_bets_cache_c') }}

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
        mkto_si_best_bets_view_c,
        mkto_si_contact_id_c,
        mkto_si_contact_link_c,
        mkto_si_contact_name_c,
        mkto_si_id_c,
        mkto_si_lead_score_c,
        mkto_si_limdate_c,
        mkto_si_limdesc_c,
        mkto_si_limtype_c,
        mkto_si_priority_c,
        mkto_si_relative_score_c,
        mkto_si_row_num_c,
        mkto_si_sobject_type_c,
        mkto_si_status_c,
        mkto_si_total_count_c,
        mkto_si_urgency_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
