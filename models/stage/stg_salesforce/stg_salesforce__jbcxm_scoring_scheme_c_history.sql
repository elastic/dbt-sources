
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_scoring_scheme_c_history') }}

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
        jbcxm_customer_scheme_c,
        jbcxm_from_c,
        jbcxm_is_active_c,
        jbcxm_system_defined_c,
        jbcxm_to_c,
        jbcxm_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
