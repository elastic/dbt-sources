
with source as (

    select * from {{ source('raw_salesforce', 'authorization_form_text_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        authorization_form_text_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        authorization_form_id,
        content_document_id,
        full_authorization_form_url,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        locale,
        locale_selection,
        name,
        summary_auth_form_text,
        system_modstamp

    from source

)

select * from renamed
