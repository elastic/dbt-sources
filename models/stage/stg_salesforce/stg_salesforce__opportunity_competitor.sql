
with source as (

    select * from {{ source('raw_salesforce', 'opportunity_competitor') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        competitor_name,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        opportunity_id,
        strengths,
        system_modstamp,
        weaknesses

    from source

)

select * from renamed
