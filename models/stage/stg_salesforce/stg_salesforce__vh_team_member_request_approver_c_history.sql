
with source as (

    select * from {{ source('raw_salesforce', 'vh_team_member_request_approver_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        vh_compound_key_c,
        vh_exception_approver_c,
        vh_group_c,
        vh_primary_approver_c,
        vh_type_c,
        vh_user_c

    from source

)

select * from renamed
