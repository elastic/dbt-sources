
with source as (

    select * from {{ source('raw_salesforce', 'action_link_template') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        action_link_group_template_id,
        action_url,
        created_by_id,
        created_date,
        headers,
        is_confirmation_required,
        is_deleted,
        is_group_default,
        label,
        label_key,
        last_modified_by_id,
        last_modified_date,
        link_type,
        method,
        position,
        request_body,
        system_modstamp,
        user_alias,
        user_visibility,
        _fivetran_deleted

    from source

)

select * from renamed
