
with source as (

    select * from {{ source('raw_salesforce', 'elastic_record_ids_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        customer_community_profile_id_c,
        ece_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        new_sub_slack_room_id_c,
        overlay_split_type_id_c,
        product_management_group_id_c,
        ring_ze_bell_c,
        ring_ze_bell_fed_c,
        setup_owner_id,
        special_dev_skus_c,
        system_modstamp,
        territory_email_c,
        territory_simulation_c,
        user_alias_c

    from source

)

select * from renamed
