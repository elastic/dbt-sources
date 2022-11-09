
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_conga_template_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        apxtconga_4_description_c,
        apxtconga_4_label_template_use_detail_data_c,
        apxtconga_4_master_field_to_set_1_c,
        apxtconga_4_master_field_to_set_2_c,
        apxtconga_4_master_field_to_set_3_c,
        apxtconga_4_name_c,
        apxtconga_4_template_extension_c,
        apxtconga_4_template_group_c,
        apxtconga_4_template_type_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
