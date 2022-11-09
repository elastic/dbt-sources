
with source as (

    select * from {{ source('raw_salesforce', 'pse_resource_skill_request_c') }}

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
        name,
        pse_is_primary_c,
        pse_match_all_c,
        pse_minimum_rating_c,
        pse_resource_request_c,
        pse_skill_certification_c,
        pse_skill_or_certification_c,
        pse_skill_record_type_c,
        system_modstamp

    from source

)

select * from renamed
