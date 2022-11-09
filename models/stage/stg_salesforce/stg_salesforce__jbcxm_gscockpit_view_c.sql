
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gscockpit_view_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_area_name_c,
        jbcxm_column_list_c,
        jbcxm_entity_type_c,
        jbcxm_order_c,
        jbcxm_relationship_type_c,
        jbcxm_system_name_c,
        jbcxm_user_c,
        jbcxm_where_clause_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
