
with source as (

    select * from {{ source('raw_salesforce', 'self_rating_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        skill_certification_c,
        system_modstamp,
        expiration_date_c,
        manager_c,
        evaluation_date_c,
        my_self_rating_c,
        manager_is_running_user_c,
        resource_c,
        update_rating_c,
        related_skill_certification_rating_c,
        resource_is_current_user_c,
        notes_c,
        submitted_c,
        approved_c,
        rating_c

    from source

)

select * from renamed
