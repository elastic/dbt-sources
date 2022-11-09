
with source as (

    select * from {{ source('raw_salesforce', 'self_rating_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        skill_certification_c,
        system_modstamp,
        approved_c,
        evaluation_date_c,
        expiration_date_c,
        manager_c,
        manager_is_running_user_c,
        my_self_rating_c,
        notes_c,
        rating_c,
        related_skill_certification_rating_c,
        resource_c,
        resource_is_current_user_c,
        submitted_c,
        update_rating_c

    from source

)

select * from renamed
