
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_award_c_history') }}

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
        learndot_id_c,
        learndot_issued_c,
        learndot_learndot_created_c,
        learndot_learndot_enrollment_c,
        learndot_learndot_modified_c,
        learndot_pre_expiry_date_c,
        learndot_status_c,
        learndot_type_c,
        learndot_url_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
