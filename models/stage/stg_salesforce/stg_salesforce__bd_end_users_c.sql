
with source as (

    select * from {{ source('raw_salesforce', 'bd_end_users_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        end_user_account_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        opportunity_c,
        owner_id,
        partner_account_name_c,
        system_modstamp,
        amount_c,
        close_date_c,
        deal_term_c,
        opportunity_onwer_c,
        opportunity_owner_alias_c,
        stage_c,
        opportunity_owner_c

    from source

)

select * from renamed
