
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_scoring_scheme_definition_c_history') }}

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
        jbcxm_color_c,
        jbcxm_display_c,
        jbcxm_from_c,
        jbcxm_grade_c,
        jbcxm_is_active_c,
        jbcxm_scheme_id_c,
        jbcxm_score_c,
        jbcxm_to_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
