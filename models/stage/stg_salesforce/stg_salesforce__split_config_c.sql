
with source as (

    select * from {{ source('raw_salesforce', 'split_config_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        field_c,
        is_deleted,
        is_literal_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        split_amount_c,
        split_percentage_c,
        split_type_id_c,
        system_modstamp,
        team_member_role_c,
        type_c,
        last_referenced_date,
        last_viewed_date,
        split_flow_type_c

    from source

)

select * from renamed
