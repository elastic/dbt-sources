
with source as (

    select * from {{ source('raw_salesforce', 'case_team_template_record_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        parent_id,
        system_modstamp,
        team_template_id

    from source

)

select * from renamed
