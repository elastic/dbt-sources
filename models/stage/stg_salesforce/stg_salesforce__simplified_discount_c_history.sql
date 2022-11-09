
with source as (

    select * from {{ source('raw_salesforce', 'simplified_discount_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        avp_limit_1_year_term_c,
        avp_limit_2_year_term_c,
        avp_limit_3_year_term_c,
        last_referenced_date,
        last_viewed_date,
        lower_bound_c,
        ns_id_c,
        rep_limit_1_year_term_c,
        rep_limit_2_year_term_c,
        rep_limit_3_year_term_c,
        upper_bound_c,
        vp_limit_1_year_term_c,
        vp_limit_2_year_term_c,
        vp_limit_3_year_term_c

    from source

)

select * from renamed
