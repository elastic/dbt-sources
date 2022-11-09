
with source as (

    select * from {{ source('raw_salesforce', 'authorization_form_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        authorization_form_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        default_auth_form_text_id,
        effective_from_date,
        effective_to_date,
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
