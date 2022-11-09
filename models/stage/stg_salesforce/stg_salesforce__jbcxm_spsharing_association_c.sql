
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_spsharing_association_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_layout_type_c,
        jbcxm_objective_c,
        jbcxm_success_plan_c,
        jbcxm_type_c,
        jbcxm_unique_key_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
