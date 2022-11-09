
with source as (

    select * from {{ source('raw_salesforce', 'zendesk_organization_custom_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_c,
        created_by_id,
        created_date,
        currency_iso_code,
        end_date_c,
        is_deleted,
        is_using_shield_c,
        last_modified_by_id,
        last_modified_date,
        name,
        opportunity_c,
        org_id_c,
        start_date_c,
        status_c,
        support_level_c,
        system_modstamp

    from source

)

select * from renamed
