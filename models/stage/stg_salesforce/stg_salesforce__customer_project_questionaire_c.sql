
with source as (

    select * from {{ source('raw_salesforce', 'customer_project_questionaire_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        cloud_c,
        cloud_order_c,
        coresponding_field_c,
        coresponding_other_text_c,
        created_by_id,
        created_date,
        currency_iso_code,
        dev_c,
        dev_order_c,
        ece_c,
        ece_order_c,
        field_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        max_length_c,
        name,
        prod_c,
        prod_order_c,
        product_for_elk_version_c,
        question_c,
        read_only_c,
        required_c,
        setup_owner_id,
        swiftype_c,
        swiftype_order_c,
        system_modstamp

    from source

)

select * from renamed
