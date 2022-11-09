
with source as (

    select * from {{ source('raw_salesforce', 'vh_opportunity_team_member_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        vh_opportunity_c,
        vh_team_member_name_c,
        vh_type_c

    from source

)

select * from renamed
