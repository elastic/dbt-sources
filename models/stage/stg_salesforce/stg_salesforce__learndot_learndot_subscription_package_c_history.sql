
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_subscription_package_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        learndot_expiry_date_c,
        learndot_expiry_duration_c,
        learndot_expiry_type_c,
        learndot_id_c,
        learndot_last_modified_by_c,
        learndot_learndot_created_by_c,
        learndot_learndot_created_c,
        learndot_learndot_modified_c,
        learndot_name_c,
        learndot_version_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
