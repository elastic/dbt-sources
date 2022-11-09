
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gsrelationship_association_c_history') }}

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
        jbcxm_config_c,
        jbcxm_entity_c,
        jbcxm_entity_type_c,
        jbcxm_relationship_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
