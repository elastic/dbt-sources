
with source as (

    select * from {{ source('raw_salesforce', 'subscription_project_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        end_date_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        license_type_c,
        name,
        node_count_c,
        owner_id,
        start_date_c,
        subscription_c,
        support_level_c,
        system_modstamp,
        quote_c

    from source

)

select * from renamed
