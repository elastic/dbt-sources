
with source as (

    select * from {{ source('raw_salesforce', 'forecast_share') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        access_level,
        can_submit,
        last_modified_by_id,
        last_modified_date,
        row_cause,
        user_or_group_id,
        user_role_id,
        _fivetran_deleted

    from source

)

select * from renamed
