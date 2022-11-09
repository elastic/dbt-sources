
with source as (

    select * from {{ source('raw_salesforce', 'skill_requirement') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_additional_skill,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        related_record_id,
        skill_id,
        skill_number,
        skill_priority,
        system_modstamp

    from source

)

select * from renamed
