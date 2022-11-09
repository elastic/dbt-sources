
with source as (

    select * from {{ source('raw_salesforce', 'authorization_form') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        default_auth_form_text_id,
        effective_from_date,
        effective_to_date,
        is_deleted,
        is_signature_required,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        revision_number,
        system_modstamp

    from source

)

select * from renamed
