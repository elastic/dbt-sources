
with source as (

    select * from {{ source('raw_salesforce', 'discount_calculator_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        avp_discount_limit_c,
        avp_limit_1_year_term_c,
        avp_limit_2_year_term_c,
        avp_limit_3_year_term_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        lower_bound_c,
        name,
        ns_id_c,
        owner_id,
        rep_discount_limit_c,
        rep_limit_1_year_term_c,
        rep_limit_2_year_term_c,
        rep_limit_3_year_term_c,
        system_modstamp,
        upper_bound_c,
        version_c,
        vp_limit_1_year_term_c,
        vp_limit_2_year_term_c,
        vp_limit_3_year_term_c

    from source

)

select * from renamed
