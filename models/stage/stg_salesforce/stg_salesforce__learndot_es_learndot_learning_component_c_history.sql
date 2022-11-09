
with source as (

    select * from {{ source('raw_salesforce', 'learndot_es_learndot_learning_component_c_history') }}

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
        learndot_es_component_name_c,
        learndot_es_component_type_c,
        learndot_es_id_c,
        learndot_es_salesforce_product_id_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
