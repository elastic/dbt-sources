
with source as (

    select * from {{ source('raw_salesforce', 'vh_team_member_requests_type_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        vh_api_name_c,
        vh_description_c,
        vh_is_active_c,
        vh_label_c,
        vh_order_c

    from source

)

select * from renamed
